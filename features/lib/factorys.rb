# frozen_string_literal: true

def sort_ids
  id_file = YAML.load_file('features/support/massa/id.yml')
  ids = "#{id_file['ids']}"
  ids = ids.split(",")
  ids = ids[rand(1...ids.length)]
  ids
end

def sort_ids_invalidos
  id_file = YAML.load_file('features/support/massa/id.yml')
  ids = "#{id_file['ids_invalidos']}".delete(' ')
  ids = ids.split(",")
  ids = ids[rand(1...ids.length)]
  return ids
end
