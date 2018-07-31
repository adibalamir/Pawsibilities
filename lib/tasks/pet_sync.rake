namespace :pet_sync do
  desc "Sync DB with petFinder"
  task download: :environment do
    puts "Downloading ..."
    DownloadPetsJob.perform_now
    puts "Pets updated"
  end

end
