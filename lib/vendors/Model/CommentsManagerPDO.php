<?php
namespace Model;

use \Entity\Comment;

class CommentsManagerPDO extends CommentsManager
{
    protected function add(Comment $comment)
    {
        $q = $this->dao->prepare('INSERT INTO comments SET news = :news, auteur = :auteur, contenu = :contenu, report = 0, date = NOW()');

        $q->bindValue(':news', $comment->news(), \PDO::PARAM_INT);
        $q->bindValue(':auteur', $comment->auteur());
        $q->bindValue(':contenu', $comment->contenu());

        $q->execute();

        $comment->setId($this->dao->lastInsertId());
    }

    public function delete($id)
    {
        $this->dao->exec('DELETE FROM comments WHERE id = '.(int) $id);
    }

    public function deleteFromNews($news)
    {
        $this->dao->exec('DELETE FROM comments WHERE news = '.(int) $news);
    }

    public function getListOf($news)
    {
        if (!ctype_digit($news))
        {
            throw new \InvalidArgumentException('L\'identifiant de la news passé doit être un nombre entier valide');
        }

        $q = $this->dao->prepare('SELECT id, news, auteur, contenu, date FROM comments WHERE news = :news');
        $q->bindValue(':news', $news, \PDO::PARAM_INT);
        $q->execute();

        $q->setFetchMode(\PDO::FETCH_CLASS | \PDO::FETCH_PROPS_LATE, '\Entity\Comment');

        $comments = $q->fetchAll();

        foreach ($comments as $comment)
        {
            $comment->setDate(new \DateTime($comment->date()));
        }

        return $comments;
    }

    protected function modify(Comment $comment)
    {
        $q = $this->dao->prepare('UPDATE comments SET auteur = :auteur, contenu = :contenu WHERE id = :id');

        $q->bindValue(':auteur', $comment->auteur());
        $q->bindValue(':contenu', $comment->contenu());
        $q->bindValue(':id', $comment->id(), \PDO::PARAM_INT);

        $q->execute();
    }

    public function get($id)
    {
        $q = $this->dao->prepare('SELECT id, news, auteur, contenu FROM comments WHERE id = :id');
        $q->bindValue(':id', (int) $id, \PDO::PARAM_INT);
        $q->execute();

        $q->setFetchMode(\PDO::FETCH_CLASS | \PDO::FETCH_PROPS_LATE, '\Entity\Comment');

        return $q->fetch();
    }

    public function setReport($id) {
        $this->dao->exec('UPDATE comments SET report = 1 WHERE id = '.(int) $id);
    }

    public function getListReport()
    {
        $q = 'SELECT id, auteur, contenu FROM comments WHERE report = 1';
        $requete = $this->dao->query($q);
        $requete->setFetchMode(\PDO::FETCH_CLASS | \PDO::FETCH_PROPS_LATE, '\Entity\Comment');

        $listeComments = $requete->fetchAll();

        $requete->closeCursor();

        return $listeComments;
    }

    public function countReport()
    {
        return $this->dao->query('SELECT COUNT(*) FROM comments WHERE report = 1')->fetchColumn();
    }

    public function commentValid($id)
    {
        $this->dao->exec('UPDATE comments SET report = 0 WHERE id = '.(int) $id);
    }
}