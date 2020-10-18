class Api::V1::JournalEntriesController < ApplicationController
  skip_before_action :authorized, only: [:create, :delete]
  skip_before_action :authorized, only: %i[show index]

    def index
        journal_entries = JournalEntry.all 
        render json: journal_entries
    end

    def show 

    end

    def create 
      # byebug
        journal_entry =  JournalEntry.create(journal_entry_params)
        # byebug
        if journal_entry.valid?
            render json: journal_entry 
        else
            render json: {error: 'failed to create journal entry'} 
        end
    end

    def update
        find_journal_entry
        if journal_entry.update(journal_entry_params)
          render json: journal_entry
        else
          render json: { error: 'Something went wrong' }
        end
      end

      def destroy
        find_journal_entry
        user.destroy
    
        render json: { message: 'deleted' }
      end

    private

    def find_journal_entries
        journal_entry = journal_entry.find_by(id: params[:id])
    end

    def journal_entry_params
        params.require(:journal_entry).permit(:content, :user_id)
    end
end
