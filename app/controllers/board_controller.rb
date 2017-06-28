class BoardController < ApplicationController
  def b_new
    render layout: false
  end
  
  def b_index
    
    
    @board = BoardDb.all   #모든 데이터 끌어와서 여기 저장
    
    
    render layout: false
  end

  def b_create          #새글쓰기
    
    
    @board = BoardDb.new       
    @board.title = params[:title]  
    @board.content = params[:content]
    # @board.photo = params[:photo]
    @board.save           
    # redirect_to '/board/b_index'
    redirect_to "/board/#{@board.id}"
    
    # render layout: false
    
  end

  def b_show
    
    
    
    @board = BoardDb.find(params[:id])
    
    @replies = @board.replies #포스트에 해당하는 댓글들
    
    render layout: false
    
  end
  
  def create_reply #댓글생성
    
  
    @reply = Reply.new
    @reply.content = params[:reply]
    @reply.board_db_id = params[:id]
    @reply.save
    
    redirect_to :back
    
    render layout: false
  end

  def delete #게시글 삭제
    
    
    @board = BoardDb.find(params[:id])
    @board.destroy
    redirect_to '/board/b_index'
    
    # render layout: false
  end

  def b_update
    @post = BoardDb.find(params[:id])
    
    # render layout: false
  end
  def b_modify # 수정된 데이터 저장
        @post = BoardDb.find(params[:id])
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save
        redirect_to "/board/#{params[:id]}"
    end
end
