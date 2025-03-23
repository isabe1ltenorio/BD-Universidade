class CreateAlunoCursosNotasView < ActiveRecord::Migration[8.0]
  def up
    execute <<-SQL
      CREATE OR REPLACE VIEW view_aluno_cursos_notas AS
      SELECT 
          a.id AS aluno_id,
          a.nome_aluno,
          c.id AS curso_id,
          c.nome_curso,
          m.nota,
          m.created_at AS data_mentoria
      FROM public.alunos a
      JOIN public.mentoria m ON a.id = m.aluno_id
      JOIN public.instrutors i ON m.instrutor_id = i.id
      JOIN public.cursos c ON i.departamento_id = c.departamento_id
      WHERE m.created_at >= NOW() - INTERVAL '5 years';
    SQL
  end

  def down
    execute "DROP VIEW IF EXISTS view_aluno_cursos_notas"
  end
end

