# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_23_012916) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome_aluno"
    t.integer "tot_creditos"
    t.bigint "departamento_id", null: false
    t.bigint "instrutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_alunos_on_departamento_id"
    t.index ["instrutor_id"], name: "index_alunos_on_instrutor_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome_curso"
    t.integer "creditos"
    t.bigint "departamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_cursos_on_departamento_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nome_depto"
    t.decimal "orcamento"
    t.bigint "predio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["predio_id"], name: "index_departamentos_on_predio_id"
  end

  create_table "instrutors", force: :cascade do |t|
    t.string "nome_instrutor"
    t.decimal "salario"
    t.bigint "departamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_instrutors_on_departamento_id"
  end

  create_table "mentoria", force: :cascade do |t|
    t.decimal "nota"
    t.bigint "aluno_id", null: false
    t.bigint "instrutor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_mentoria_on_aluno_id"
    t.index ["instrutor_id"], name: "index_mentoria_on_instrutor_id"
  end

  create_table "ministras", force: :cascade do |t|
    t.integer "semestre"
    t.integer "ano"
    t.bigint "curso_id", null: false
    t.bigint "secao_id", null: false
    t.bigint "instrutor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_ministras_on_curso_id"
    t.index ["instrutor_id"], name: "index_ministras_on_instrutor_id"
    t.index ["secao_id"], name: "index_ministras_on_secao_id"
  end

  create_table "periodos", force: :cascade do |t|
    t.date "data"
    t.time "hora_inicial"
    t.time "hora_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pre_requisitos", force: :cascade do |t|
    t.bigint "curso_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_pre_requisitos_on_curso_id"
  end

  create_table "predios", force: :cascade do |t|
    t.string "nome_predio"
    t.bigint "universidade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universidade_id"], name: "index_predios_on_universidade_id"
  end

  create_table "salas", force: :cascade do |t|
    t.integer "capacidade"
    t.string "num_sala"
    t.bigint "predio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["predio_id"], name: "index_salas_on_predio_id"
  end

  create_table "secaos", force: :cascade do |t|
    t.integer "ano"
    t.integer "num_sala"
    t.bigint "curso_id", null: false
    t.bigint "periodo_id", null: false
    t.bigint "predio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_secaos_on_curso_id"
    t.index ["periodo_id"], name: "index_secaos_on_periodo_id"
    t.index ["predio_id"], name: "index_secaos_on_predio_id"
  end

  create_table "universidades", force: :cascade do |t|
    t.string "nome_universidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunos", "departamentos"
  add_foreign_key "alunos", "instrutors"
  add_foreign_key "cursos", "departamentos"
  add_foreign_key "departamentos", "predios"
  add_foreign_key "instrutors", "departamentos"
  add_foreign_key "mentoria", "alunos"
  add_foreign_key "mentoria", "instrutors"
  add_foreign_key "ministras", "cursos"
  add_foreign_key "ministras", "instrutors"
  add_foreign_key "ministras", "secaos"
  add_foreign_key "pre_requisitos", "cursos"
  add_foreign_key "predios", "universidades"
  add_foreign_key "salas", "predios"
  add_foreign_key "secaos", "cursos"
  add_foreign_key "secaos", "periodos"
  add_foreign_key "secaos", "predios"
end
