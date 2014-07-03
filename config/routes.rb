Rails.application.routes.draw do
  root "echo#simple"

  get "nested" => "echo#nested", as: :nested
  get "deeply-nested" => "echo#deeply_nested", as: :deeply_nested
  get "array" => "echo#array", as: :array
  get "hash" => "echo#hash", as: :hash

  post "echo" => "echo#echo", as: :echo

end
