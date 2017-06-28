class BoardController < ApplicationController
  def b_new
  
  end
  
  def b_index
    @board = BoardDb.all   #모든 데이터 끌어와서 여기 저장
  end

  def b_create          #새글쓰기
    @board = BoardDb.new       
    @board.title = params[:title]  
    @board.content = params[:content]
    # @board.photo = params[:photo]
    @board.save           
    # redirect_to '/board/b_index'
    redirect_to "/board/#{@board.id}"
  end

  def b_show
    @board = BoardDb.find(params[:id])
    
    @replies = @board.replies #포스트에 해당하는 댓글들
    
  end
  
  def create_reply #댓글생성
    @reply = Reply.new
    @reply.content = params[:reply]
    @reply.board_db_id = params[:id]
    @reply.save
    
    redirect_to :back
  end

  def b_delete #게시글 삭제
    BoardDb.destroy(params[:post_id])
    redirect_to '/board/b_index'
  end

  def b_update
    
  end
end
