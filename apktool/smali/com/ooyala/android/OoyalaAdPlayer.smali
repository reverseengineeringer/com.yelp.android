.class Lcom/ooyala/android/OoyalaAdPlayer;
.super Lcom/ooyala/android/AdMoviePlayer;
.source "OoyalaAdPlayer.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private _ad:Lcom/ooyala/android/OoyalaAdSpot;

.field private _fetchTask:Ljava/lang/Object;

.field private _learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

.field private _playerLayout:Landroid/widget/FrameLayout;

.field private _topMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/ooyala/android/OoyalaAdPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/OoyalaAdPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ooyala/android/AdMoviePlayer;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/OoyalaAdPlayer;)Lcom/ooyala/android/OoyalaAdSpot;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/StreamPlayer;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer;->setBasePlayer2(Lcom/ooyala/android/StreamPlayer;)V

    return-void
.end method

.method private initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getStreams()Ljava/util/Set;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/ooyala/android/AdMoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 70
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getClickURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    .line 72
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getTopBarOffset()I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_topMargin:I

    .line 73
    new-instance v0, Lcom/ooyala/android/AdsLearnMoreButton;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_topMargin:I

    invoke-direct {v0, v1, p0, v2}, Lcom/ooyala/android/AdsLearnMoreButton;-><init>(Landroid/content/Context;Lcom/ooyala/android/AdMoviePlayer;I)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    .line 74
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getTrackingURLs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getTrackingURLs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 79
    invoke-static {v0}, Lcom/ooyala/android/NetUtils;->ping(Ljava/net/URL;)V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method private setBasePlayer2(Lcom/ooyala/android/StreamPlayer;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/ooyala/android/AdMoviePlayer;->setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V

    .line 114
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0}, Lcom/ooyala/android/AdsLearnMoreButton;->destroy()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_fetchTask:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_fetchTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    .line 177
    :cond_1
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->destroy()V

    .line 178
    return-void
.end method

.method public bridge synthetic getAd()Lcom/ooyala/android/AdSpot;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaAdPlayer;->getAd()Lcom/ooyala/android/OoyalaAdSpot;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/ooyala/android/OoyalaAdSpot;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AdSpot;)V
    .locals 4

    .prologue
    .line 28
    instance-of v0, p2, Lcom/ooyala/android/OoyalaAdSpot;

    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v0, "Invalid Ad"

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_error:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 64
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_seekable:Z

    .line 34
    check-cast p2, Lcom/ooyala/android/OoyalaAdSpot;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    .line 37
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getAuthCode()I

    move-result v0

    if-lez v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "This ad was unauthorized to play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaAdSpot;->getAuthCode()I

    move-result v1

    invoke-static {v1}, Lcom/ooyala/android/ContentItem;->getAuthError(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_error:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getStream()Lcom/ooyala/android/Stream;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaAdPlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_fetchTask:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_fetchTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaAdPlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaAdPlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    .line 48
    :goto_1
    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    iget-object v1, v1, Lcom/ooyala/android/OoyalaAdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    new-instance v3, Lcom/ooyala/android/OoyalaAdPlayer$1;

    invoke-direct {v3, p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer$1;-><init>(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_fetchTask:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_4
    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    goto :goto_1

    .line 63
    :cond_5
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)V

    goto :goto_0
.end method

.method public processClickThrough()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->getClickURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    iget-object v2, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    sget-object v1, Lcom/ooyala/android/OoyalaAdPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Opening brower to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Lcom/ooyala/android/OoyalaAdPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "There was some exception on clickthrough!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->resume()V

    .line 162
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer;->setBasePlayer2(Lcom/ooyala/android/StreamPlayer;)V

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    iget-object v1, v1, Lcom/ooyala/android/OoyalaAdSpot;->_api:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;

    new-instance v3, Lcom/ooyala/android/OoyalaAdPlayer$2;

    invoke-direct {v3, p0, p1}, Lcom/ooyala/android/OoyalaAdPlayer$2;-><init>(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/StreamPlayer;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    goto :goto_1
.end method

.method public updateLearnMoreButton(Landroid/widget/FrameLayout;I)V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_topMargin:I

    if-ne v0, p2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 131
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    .line 134
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, p2}, Lcom/ooyala/android/AdsLearnMoreButton;->setTopMargin(I)V

    .line 135
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
