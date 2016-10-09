class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :local
  belongs_to :sala


  enum status: [:requested, :confirmed, :waiting, :rejected, :dismissed, :cancelled]

 def set_default_status
    self.status ||= :requested
 end

   after_initialize :set_default_status

 def cancel
    self.status = :cancelled
    self.save
  end

  def self.from_user(user)
    Reservation.where(user_id: user.id)
  end

  def self.uncancelled
    Reservation.where.not(status: 5)
  end


  def cancel
    @reservation.cancel
    respond_to do |format|
      format.html { redirect_to edit_profile_path(current_user.profile), notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


end
