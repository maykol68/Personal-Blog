# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.create(title: "mi primer articulo", description: "lorem ipsumCillum excepteur nulla ipsum ullamco qui et aliquip tempor qui. Occaecat consectetur et eiusmod nulla mollit amet commodo ad. Labore ullamco culpa eiusmod exercitation culpa non aliqua excepteur laborum consequat ipsum. Anim amet laborum pariatur et exercitation velit voluptate amet id eu. Duis veniam elit laborum veniam aliquip ut laborum esse nostrud et veniam. Voluptate fugiat laborum elit aliquip. Voluptate aute enim in aute laboris ipsum cupidatat mollit dolor in commodo non.")
Article.create(title: "mi segundo articulo", description: "lorem ipsumCillum excepteur nulla ipsum ullamco qui et aliquip tempor qui. Occaecat consectetur et eiusmod nulla mollit amet commodo ad. Labore ullamco culpa eiusmod exercitation culpa non aliqua excepteur laborum consequat ipsum. Anim amet laborum pariatur et exercitation velit voluptate amet id eu. Duis veniam elit laborum veniam aliquip ut laborum esse nostrud et veniam. Voluptate fugiat laborum elit aliquip. Voluptate aute enim in aute laboris ipsum cupidatat mollit dolor in commodo non.")

