# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #

    columns do
      column do
        panel "Genre" do
          # ul do
          #   # Post.recent(5).map do |post|
          #   #   li link_to(post.title, admin_post_path(post))
          #   # end
          # end
          @genre = Genre.all
          table_for @genre do |g|
            g.each do |b|
              column "Genre Name", :name
            end
          end
        end
      end
  

      column do
        panel "Authors" do
          @author = Author.all
          

          table_for @author do |at|
            # at.column("name")
            at.each do |a|
              # at.column("name"){a.first_name}
              column 'Author Name', :first_name
            end
          end
        end
      end

      column do
        panel "Books" do
          @book=Book.all

          table_for @book do |t|

            t.each do |b|
              column "Book Name", :name
            # t.column("name") {b.name}
            end
            
          end
        end
      end

      

    end
  end # content
end
