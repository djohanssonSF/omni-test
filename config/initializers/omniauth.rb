Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  #provider :linkedin, ENV['78xzppfozcphtl'], ENV['F9oXMy7cVwGkhoYT'], :scope => 'r_fullprofile r_emailaddress r_network', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
  provider :linkedin, '78xzppfozcphtl', 'F9oXMy7cVwGkhoYT'
  provider :twitter, "Ir2qvmdIig5MCHrRZaQg4I4Gp", "XNS2lT1JQs8C7eBWX0uWoizHuz594S8toZ7Oc3YoIKg54Lscim"
  provider :facebook, "1586378281642825", "cb56e71514e0649d6c093dde9668f816"  
end