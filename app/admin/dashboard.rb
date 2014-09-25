ActiveAdmin.register_page "Dashboard" do
  menu :priority => 0
  
  content title: proc{ I18n.t("active_admin.dashboard") } do

  section 'Recent Punchlist Items' do
    table_for Punchitem.order('created_at desc').limit(10) do
      column :description do |punchitem|
        link_to punchitem.description, [:admin, punchitem]
      end
      column :created_at
    end
    strong { link_to "View all Punchlist Items", admin_punchitems_path }
  end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end
    #
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
