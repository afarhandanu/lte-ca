.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# static fields
.field private static final greylist-max-o STATE_ERROR:I = -0x1

.field private static final greylist-max-p STATE_IDLE:I = 0x0

.field private static final greylist-max-o STATE_PAUSED:I = 0x4

.field private static final greylist-max-o STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final greylist-max-o STATE_PLAYING:I = 0x3

.field private static final greylist-max-o STATE_PREPARED:I = 0x2

.field private static final greylist-max-o STATE_PREPARING:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mAudioFocusType:I

.field private greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private greylist-max-o mAudioSession:I

.field private greylist-max-o mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private greylist-max-o mCanPause:Z

.field private greylist-max-o mCanSeekBack:Z

.field private greylist-max-o mCanSeekForward:Z

.field private greylist-max-o mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist mCurrentBufferPercentage:I

.field private greylist mCurrentState:I

.field private greylist-max-p mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private greylist mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private greylist mMediaController:Landroid/widget/MediaController;

.field private greylist mMediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private greylist-max-o mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private greylist-max-o mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private greylist-max-o mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final greylist-max-o mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field greylist mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private greylist-max-o mSeekWhenPrepared:I

.field greylist-max-o mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private greylist-max-o mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private greylist-max-o mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private greylist-max-o mSurfaceHeight:I

.field private greylist-max-p mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private greylist-max-o mSurfaceWidth:I

.field private greylist mTargetState:I

.field private greylist mUri:Landroid/net/Uri;

.field private greylist mVideoHeight:I

.field private greylist mVideoWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioFocusType(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioManager(Landroid/widget/VideoView;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnCompletionListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeekWhenPrepared(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetState(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mTargetState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoHeight(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoWidth(Landroid/widget/VideoView;)I
    .registers 1

    iget p0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanPause(Landroid/widget/VideoView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanSeekBack(Landroid/widget/VideoView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanSeekForward(Landroid/widget/VideoView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentBufferPercentage(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentState(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHolder(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetState(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoHeight(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoWidth(Landroid/widget/VideoView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenVideo(Landroid/widget/VideoView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/widget/VideoView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 159
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    .line 110
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 112
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 116
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 118
    iput-object p2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 140
    const/4 p2, 0x1

    iput p2, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    .line 466
    new-instance p3, Landroid/widget/VideoView$1;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 478
    new-instance p3, Landroid/widget/VideoView$2;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 541
    new-instance p3, Landroid/widget/VideoView$3;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 558
    new-instance p3, Landroid/widget/VideoView$4;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 568
    new-instance p3, Landroid/widget/VideoView$5;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 621
    new-instance p3, Landroid/widget/VideoView$6;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 673
    new-instance p3, Landroid/widget/VideoView$7;

    invoke-direct {p3, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object p3, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 164
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 165
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 167
    iget-object p3, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string p4, "audio"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p3, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    .line 169
    const/4 p4, 0x3

    invoke-virtual {p3, p4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 171
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    iget-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p3, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    invoke-interface {p3, p4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 174
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 175
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 176
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 178
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 179
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 180
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 1

    .line 83
    iget-object p0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 1

    .line 83
    iget-object p0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private greylist-max-o attachMediaController()V
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_2b

    .line 458
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 459
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 460
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1d

    :cond_1c
    move-object v0, p0

    .line 461
    :goto_1d
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 464
    :cond_2b
    return-void
.end method

.method private greylist-max-o isInPlaybackState()Z
    .registers 3

    .line 863
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private greylist-max-o measureAndLayoutSubtitleWidget()V
    .registers 4

    .line 939
    invoke-virtual {p0}, Landroid/widget/VideoView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 940
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 942
    iget-object v2, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    .line 943
    return-void
.end method

.method private greylist-max-o openVideo()V
    .registers 10

    .line 374
    const-string v0, "Unable to open content: "

    const-string v1, "VideoView"

    iget-object v2, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_151

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_e

    goto/16 :goto_151

    .line 380
    :cond_e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/VideoView;->release(Z)V

    .line 382
    iget v3, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    if-eqz v3, :cond_20

    .line 384
    iget-object v3, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v5, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    .line 388
    :cond_20
    const/4 v3, 0x1

    const/4 v4, -0x1

    :try_start_22
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 391
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 392
    new-instance v6, Landroid/media/SubtitleController;

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 393
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v6, v5, v7, v8}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 394
    new-instance v7, Landroid/media/WebVttRenderer;

    invoke-direct {v7, v5}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 395
    new-instance v7, Landroid/media/TtmlRenderer;

    invoke-direct {v7, v5}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 396
    new-instance v7, Landroid/media/Cea708CaptionRenderer;

    invoke-direct {v7, v5}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 397
    new-instance v7, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v7, v5}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 398
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 400
    iget v5, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-eqz v5, :cond_6b

    .line 401
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_73

    .line 403
    :cond_6b
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v5

    iput v5, p0, Landroid/widget/VideoView;->mAudioSession:I

    .line 405
    :goto_73
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 406
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 407
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 408
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 409
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 410
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 411
    iput v2, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 412
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 413
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 414
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 415
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 416
    iget-object v5, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 418
    iget-object v5, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_d4} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_d4} :catch_fb
    .catchall {:try_start_22 .. :try_end_d4} :catchall_f9

    .line 420
    :try_start_d4
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/io/InputStream;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/media/MediaFormat;

    invoke-virtual {v7, v8, v6}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_e1
    .catch Ljava/lang/IllegalStateException; {:try_start_d4 .. :try_end_e1} :catch_e2
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e1} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_e1} :catch_fb
    .catchall {:try_start_d4 .. :try_end_e1} :catchall_f9

    .line 424
    goto :goto_ec

    .line 421
    :catch_e2
    move-exception v6

    .line 422
    :try_start_e3
    iget-object v6, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v8, 0x385

    invoke-interface {v6, v7, v8, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 425
    :goto_ec
    goto :goto_c8

    .line 429
    :cond_ed
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 430
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f2} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_f2} :catch_fb
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_f9

    .line 444
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_f9
    move-exception v0

    goto :goto_14b

    .line 437
    :catch_fb
    move-exception v5

    .line 438
    :try_start_fc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    iput v4, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 440
    iput v4, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 441
    iget-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_11d
    .catchall {:try_start_fc .. :try_end_11d} :catchall_f9

    .line 444
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 442
    return-void

    .line 431
    :catch_123
    move-exception v5

    .line 432
    :try_start_124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    iput v4, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 434
    iput v4, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 435
    iget-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_145
    .catchall {:try_start_124 .. :try_end_145} :catchall_f9

    .line 444
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 436
    return-void

    .line 444
    :goto_14b
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 445
    throw v0

    .line 376
    :cond_151
    :goto_151
    return-void
.end method

.method private greylist release(Z)V
    .registers 4

    .line 711
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    .line 712
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 713
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 715
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 716
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 717
    if-eqz p1, :cond_1d

    .line 718
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 720
    :cond_1d
    iget p1, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    if-eqz p1, :cond_26

    .line 721
    iget-object p1, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 724
    :cond_26
    return-void
.end method

.method private greylist-max-o toggleMediaControlsVisiblity()V
    .registers 2

    .line 787
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 788
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_13

    .line 790
    :cond_e
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 792
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 5

    .line 350
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    .line 351
    iget-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 354
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_14

    .line 358
    goto :goto_1f

    .line 355
    :catch_14
    move-exception p1

    .line 356
    iget-object p1, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object p2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v0, 0x385

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 360
    :goto_1f
    return-void
.end method

.method public whitelist canPause()Z
    .registers 2

    .line 871
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public whitelist canSeekBackward()Z
    .registers 2

    .line 876
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public whitelist canSeekForward()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 923
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 925
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_20

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 927
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 928
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 929
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 931
    :cond_20
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 248
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAudioSessionId()I
    .registers 3

    .line 886
    iget v0, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-nez v0, :cond_12

    .line 887
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 888
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    .line 889
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 891
    :cond_12
    iget v0, p0, Landroid/widget/VideoView;->mAudioSession:I

    return v0
.end method

.method public whitelist getBufferPercentage()I
    .registers 2

    .line 856
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 857
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return v0

    .line 859
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentPosition()I
    .registers 2

    .line 833
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 834
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 836
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDuration()I
    .registers 2

    .line 824
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 825
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    .line 828
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getSubtitleLooper()Landroid/os/Looper;
    .registers 2

    .line 990
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isPlaying()Z
    .registers 2

    .line 851
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 896
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 898
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    .line 899
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 901
    :cond_c
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 905
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 907
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    .line 908
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 910
    :cond_c
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 747
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 754
    :goto_1d
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_7f

    .line 755
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_65

    const/16 v0, 0x55

    if-ne p1, v0, :cond_32

    goto :goto_65

    .line 765
    :cond_32
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_47

    .line 766
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_46

    .line 767
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 768
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 770
    :cond_46
    return v1

    .line 771
    :cond_47
    const/16 v0, 0x56

    if-eq p1, v0, :cond_54

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_50

    goto :goto_54

    .line 779
    :cond_50
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_7f

    .line 773
    :cond_54
    :goto_54
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 774
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 775
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 777
    :cond_64
    return v1

    .line 757
    :cond_65
    :goto_65
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 758
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 759
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    goto :goto_7e

    .line 761
    :cond_76
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 762
    iget-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 764
    :goto_7e
    return v1

    .line 783
    :cond_7f
    :goto_7f
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6

    .line 914
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 916
    move-object p1, p0

    iget-object p2, p1, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p2, :cond_b

    .line 917
    invoke-direct {p0}, Landroid/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    .line 919
    :cond_b
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8

    .line 187
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 188
    iget v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 189
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_94

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_94

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 193
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 194
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 196
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4f

    if-ne v1, v2, :cond_4f

    .line 198
    nop

    .line 199
    nop

    .line 202
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_3e

    .line 204
    iget p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v0, p1, v0

    move v1, p2

    goto/16 :goto_94

    .line 205
    :cond_3e
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-le v0, v1, :cond_70

    .line 207
    iget p2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    move v0, p1

    goto :goto_94

    .line 209
    :cond_4f
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_62

    .line 211
    nop

    .line 212
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    .line 213
    if-ne v1, v3, :cond_5f

    if-le v0, p2, :cond_5f

    .line 215
    goto :goto_70

    .line 243
    :cond_5f
    move v1, v0

    move v0, p1

    goto :goto_94

    .line 217
    :cond_62
    if-ne v1, v2, :cond_75

    .line 219
    nop

    .line 220
    iget v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    .line 221
    if-ne v0, v3, :cond_72

    if-le v1, p1, :cond_72

    .line 223
    nop

    .line 243
    :cond_70
    :goto_70
    move v0, p1

    goto :goto_73

    :cond_72
    move v0, v1

    :goto_73
    move v1, p2

    goto :goto_94

    .line 227
    :cond_75
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 228
    iget v4, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 229
    if-ne v1, v3, :cond_85

    if-le v4, p2, :cond_85

    .line 231
    nop

    .line 232
    iget v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_87

    .line 234
    :cond_85
    move v1, v2

    move p2, v4

    :goto_87
    if-ne v0, v3, :cond_72

    if-le v1, p1, :cond_72

    .line 236
    nop

    .line 237
    iget p2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    move v0, p1

    .line 243
    :cond_94
    :goto_94
    invoke-virtual {p0, v0, v1}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 244
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 729
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    .line 730
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 732
    :cond_13
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 738
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    .line 739
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 741
    :cond_13
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist pause()V
    .registers 3

    .line 805
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_16

    .line 806
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 807
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 808
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 811
    :cond_16
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 812
    return-void
.end method

.method public whitelist resolveAdjustedSize(II)I
    .registers 3

    .line 252
    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result p1

    return p1
.end method

.method public whitelist resume()V
    .registers 1

    .line 819
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 820
    return-void
.end method

.method public whitelist seekTo(I)V
    .registers 3

    .line 841
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 842
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 843
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_11

    .line 845
    :cond_f
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 847
    :goto_11
    return-void
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 3

    .line 321
    if-eqz p1, :cond_5

    .line 324
    iput-object p1, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 325
    return-void

    .line 322
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioAttributes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAudioFocusRequest(I)V
    .registers 5

    .line 306
    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 311
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal audio focus type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_28
    :goto_28
    iput p1, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    .line 314
    return-void
.end method

.method public whitelist setMediaController(Landroid/widget/MediaController;)V
    .registers 3

    .line 449
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    .line 450
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 452
    :cond_9
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 453
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 454
    return-void
.end method

.method public whitelist setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 647
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 648
    return-void
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .line 660
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 661
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2

    .line 670
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 671
    return-void
.end method

.method public whitelist setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 636
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 637
    return-void
.end method

.method public greylist-max-o setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .registers 5

    .line 948
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v0, p1, :cond_5

    .line 949
    return-void

    .line 952
    :cond_5
    invoke-virtual {p0}, Landroid/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    .line 953
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_1a

    .line 954
    if-eqz v0, :cond_14

    .line 955
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 958
    :cond_14
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 961
    :cond_1a
    iput-object p1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    .line 963
    if-eqz p1, :cond_3b

    .line 964
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_29

    .line 965
    new-instance v1, Landroid/widget/VideoView$8;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 973
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 974
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 976
    if-eqz v0, :cond_3f

    .line 977
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 978
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    goto :goto_3f

    .line 981
    :cond_3b
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 984
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 985
    return-void
.end method

.method public whitelist setVideoPath(Ljava/lang/String;)V
    .registers 2

    .line 261
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 262
    return-void
.end method

.method public whitelist setVideoURI(Landroid/net/Uri;)V
    .registers 3

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 271
    return-void
.end method

.method public whitelist setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 285
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 286
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 287
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 288
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 289
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 290
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 796
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    .line 797
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 798
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 800
    :cond_e
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 801
    return-void
.end method

.method public whitelist stopPlayback()V
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 364
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 365
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 367
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 368
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 369
    iget-object v1, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 371
    :cond_1b
    return-void
.end method

.method public whitelist suspend()V
    .registers 2

    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 816
    return-void
.end method
