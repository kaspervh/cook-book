

namespace :title do
  desc "makes home title"
  task :import => :environment do
  filler = {title:"Om os", text:"hvis du har spørgsmål til emnet så kan du skrive til mig på kaspervhauschildt@gmail.com"}
  content = AboutContent.where(filler).first_or_create(filler)
 end
end
