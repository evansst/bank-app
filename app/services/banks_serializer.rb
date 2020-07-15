class BanksSerializer
  def initialize bank_object
    @bank = bank_object
  end

  def to_serialized_json
    @bank.to_json(
      include: {
        accounts: { only: [:number] }
      },
      except: %i[updated_at created_at]
    )
  end
end
