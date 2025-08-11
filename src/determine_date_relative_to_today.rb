require "foobara/llm_backed_command"

class DetermineDateRelativeToToday < Foobara::LlmBackedCommand
  inputs do
    phrase :string, :required
    today :date, default: -> { Date.today }
    llm_model Foobara::Ai::AnswerBot::Types.model_enum, default: "qwen3-coder:30b"
  end

  result :date, description: "The date referred to in the phrase relative to today"
end
