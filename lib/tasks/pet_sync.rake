namespace :pet_sync do
  desc "Sync DB with petFinder"
  task download: :environment do
    DownloadPetsJob.perform_later
  end

end
