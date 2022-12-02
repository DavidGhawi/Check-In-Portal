package uk.ac.cardiff.ASE2022Y2TEAM07.repositories;


import org.springframework.stereotype.Repository;
import uk.ac.cardiff.ASE2022Y2TEAM07.domain.Note;

import java.util.Optional;

@Repository
public class NoteRepositoryImpl implements NoteRepository {
    private NoteRepositorySpringDataJdbc repoJdbc;

    public NoteRepositoryImpl(NoteRepositorySpringDataJdbc aRepo) {
        repoJdbc = aRepo;
    }

//    @Override
//    public Optional<Note> getNoteById(Integer noteId) {
//        Optional<Note> note = repoJdbc.findByNoteId(noteId);
//        return note;
//    }

    @Override
    public void save(Note note) {
        repoJdbc.save(note);
    }

}
