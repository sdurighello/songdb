describe "#liked?" do
  let(:user) { User.create(email: "user@social.com", password: "12345678") }
  let(:post) { Post.create(message: "Whoopie", user: user) }
  subject { user.liked?(post) }

  it { is_expected.to be false }

  context "when liked" do
    before { Like.create(post: post, user: user) }
    it { is_expected.to be true }
  end
end

def liked?(post)
  likes.pluck(:post_id).include?(post.id)
end
