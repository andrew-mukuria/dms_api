class Parish < ActiveRecord::Base
has_many :service
    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |parish|
                csv << parish.attributes.values_at(*column_names)
            end
        end
    end
end
