class MembersController < ApplicationController
  def index
    @members = Member.all

    render json: @members, methods: [:job]
  end

  def show
    @member = Member.find(params[:id])

    render json: MemberSerializer.new(@member).to_serialized_json
  end

  def create
    @member = Member.create(name: params[:name], email: params[:email])

    render json: @member
  end

  def update
    @member = Member.find(params[:id])
    @member.update(name: params[:name], email: params[:email])

    redirect_to member_path
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    render json: "#{@member.name} was destroyed"
  end
end
