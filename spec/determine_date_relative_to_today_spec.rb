RSpec.describe DetermineDateRelativeToToday do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }
  let(:errors_hash) { outcome.errors_hash }

  let(:inputs) do
    { phrase:, llm_model:, today: }
  end

  let(:today) { Date.parse("2025-08-10") }
  let(:phrase) { "The Thursday after next" }
  let(:llm_model) { "qwen3-coder:30b" }

  it "is successful", vcr: { record: :none } do
    expect(outcome).to be_success

    expect(result).to be_thursday

    expect(result.year).to eq(2025)
    expect(result.month).to eq(8)
    expect(result.day).to eq(21)
  end
end
