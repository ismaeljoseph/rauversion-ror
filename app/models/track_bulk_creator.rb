# app/models/track_bulk_creator.rb
# require 'active_model'

class TrackBulkCreator
  include ActiveModel::Model

  attr_accessor :tracks_attributes, :step, :user

  validate :validate_tracks

  # Initialize the tracks_attributes with an empty array
  def initialize(attributes = {})
    self.tracks_attributes ||= []
  end

  def tracks_attributes_objects=(attributes)
    array = attributes.keys.map { |o| attributes[o] }
    self.tracks_attributes = array #.map { |o| Track.new(o) }
    # array.map{|o| ScheduleRecord.new(o) }
  end

  def save
    return false unless valid?
    tracks.each(&:save!)
    true
  rescue => e
    errors.add(:base, e.message)
    false
  end

  def tracks
    @tracks ||= tracks_attributes.map do |attributes|
      t = Track.new(attributes)
      t.user = user
      t
    end
  end

  private

  def validate_tracks
    tracks.each do |track|
      next if track.valid?
      track.errors.full_messages.each do |message|
        errors.add(:base, "#{track.title}: #{message}")
      end
    end
  end
end