class MemberSerializer
  def initialize member_object
    @member = member_object
  end

  def to_serialized_json
    @member.to_json(
      include: {
        accounts: {
          only: [:number],
          include: {
            bank: { only: [:name] }
          }
        }
      },
      except: %i[updated_at created_at]
    )
  end
end
