.class Lcom/ooyala/android/VASTAdPlayer;
.super Lcom/ooyala/android/AdMoviePlayer;
.source "VASTAdPlayer.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private _ad:Lcom/ooyala/android/VASTAdSpot;

.field private _fetchTask:Ljava/lang/Object;

.field private _firstQSent:Z

.field private _impressionSent:Z

.field private _impressionURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

.field private _linearAdQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/VASTLinearAd;",
            ">;"
        }
    .end annotation
.end field

.field private _midSent:Z

.field private _playerLayout:Landroid/widget/FrameLayout;

.field private _startSent:Z

.field private _thirdQSent:Z

.field private _topMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/ooyala/android/VASTAdPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/ooyala/android/AdMoviePlayer;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionURLs:Ljava/util/List;

    .line 22
    iput-boolean v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionSent:Z

    .line 23
    iput-boolean v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_startSent:Z

    .line 24
    iput-boolean v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_firstQSent:Z

    .line 25
    iput-boolean v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_midSent:Z

    .line 26
    iput-boolean v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_thirdQSent:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/VASTAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)Z
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ooyala/android/VASTAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)Z

    move-result v0

    return v0
.end method

.method private addQuartileBoundaryObserver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_startSent:Z

    .line 184
    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_firstQSent:Z

    .line 185
    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_midSent:Z

    .line 186
    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_thirdQSent:Z

    .line 187
    return-void
.end method

.method private currentAd()Lcom/ooyala/android/VASTLinearAd;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTLinearAd;

    goto :goto_0
.end method

.method private initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTAd;

    .line 87
    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionURLs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAd;->getImpressionURLs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual {v0}, Lcom/ooyala/android/VASTAd;->getSequence()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTSequenceItem;

    .line 90
    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->hasLinear()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getLinear()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/android/VASTLinearAd;->getStream()Lcom/ooyala/android/Stream;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTSequenceItem;->getLinear()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 119
    :goto_1
    return v0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTLinearAd;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getStreams()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    .line 99
    :cond_5
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->addQuartileBoundaryObserver()V

    .line 101
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTLinearAd;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getStreams()Ljava/util/Set;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/ooyala/android/AdMoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 104
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    .line 105
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getTopBarOffset()I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    .line 108
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getClickThroughURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    new-instance v0, Lcom/ooyala/android/AdsLearnMoreButton;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    invoke-direct {v0, v1, p0, v2}, Lcom/ooyala/android/AdsLearnMoreButton;-><init>(Landroid/content/Context;Lcom/ooyala/android/AdMoviePlayer;I)V

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    .line 110
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->getTrackingURLs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->getTrackingURLs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 115
    invoke-static {v0}, Lcom/ooyala/android/NetUtils;->ping(Ljava/net/URL;)V

    goto :goto_2

    .line 119
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private sendImpressionTrackingEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    sget-object v2, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending Impression Tracking Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/NetUtils;->ping(Ljava/net/URL;)V

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionSent:Z

    .line 325
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0}, Lcom/ooyala/android/AdsLearnMoreButton;->destroy()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_fetchTask:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_fetchTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    .line 337
    :cond_1
    invoke-virtual {p0, p0}, Lcom/ooyala/android/VASTAdPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 338
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->destroy()V

    .line 339
    return-void
.end method

.method public bridge synthetic getAd()Lcom/ooyala/android/AdSpot;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->getAd()Lcom/ooyala/android/VASTAdSpot;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/ooyala/android/VASTAdSpot;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AdSpot;)V
    .locals 2

    .prologue
    .line 47
    instance-of v0, p2, Lcom/ooyala/android/VASTAdSpot;

    if-nez v0, :cond_1

    .line 48
    const-string/jumbo v0, "Invalid Ad"

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_error:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_seekable:Z

    .line 53
    check-cast p2, Lcom/ooyala/android/VASTAdSpot;

    iput-object p2, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    .line 54
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTAdSpot;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_fetchTask:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_fetchTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_ad:Lcom/ooyala/android/VASTAdSpot;

    new-instance v1, Lcom/ooyala/android/VASTAdPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/ooyala/android/VASTAdPlayer$1;-><init>(Lcom/ooyala/android/VASTAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/ooyala/android/VASTAdSpot;->fetchPlaybackInfo(Lcom/ooyala/android/FetchPlaybackInfoCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_fetchTask:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_4
    invoke-direct {p0, p1}, Lcom/ooyala/android/VASTAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "Bad VAST Ad"

    iput-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_error:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_1

    .line 143
    const-string/jumbo v0, "pause"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 145
    :cond_1
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentTime()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string/jumbo v0, "resume"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->play()V

    goto :goto_0
.end method

.method public processClickThrough()V
    .locals 5

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getClickTrackingURLs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getClickTrackingURLs()Ljava/util/Set;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    sget-object v2, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending Click Tracking Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/NetUtils;->ping(Ljava/net/URL;)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getClickThroughURL()Ljava/lang/String;

    move-result-object v0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 300
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    sget-object v1, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

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

    .line 306
    :goto_1
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    sget-object v1, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "There was some exception on clickthrough!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->resume()V

    .line 153
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 156
    :cond_0
    return-void
.end method

.method public sendTrackingEvent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getTrackingEvents()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getTrackingEvents()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    sget-object v2, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Tracking Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {v0}, Lcom/ooyala/android/VASTAdSpot;->urlFromAdUrlString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/NetUtils;->ping(Ljava/net/URL;)V

    goto :goto_0
.end method

.method protected setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_0
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->addQuartileBoundaryObserver()V

    .line 171
    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/VASTLinearAd;

    invoke-virtual {v0}, Lcom/ooyala/android/VASTLinearAd;->getStreams()Ljava/util/Set;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/ooyala/android/AdMoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-super {p0, p1}, Lcom/ooyala/android/AdMoviePlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v8, 0x1

    .line 191
    const-string/jumbo v2, "timeChanged"

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 192
    iget-boolean v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_startSent:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentTime()I

    move-result v2

    if-lez v2, :cond_2

    .line 193
    iget-boolean v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionSent:Z

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_impressionURLs:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendImpressionTrackingEvent(Ljava/util/List;)V

    .line 196
    :cond_0
    const-string/jumbo v2, "creativeView"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v2, "start"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 198
    iput-boolean v8, p0, Lcom/ooyala/android/VASTAdPlayer;->_startSent:Z

    .line 246
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/ooyala/android/AdMoviePlayer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 247
    return-void

    .line 199
    :cond_2
    iget-boolean v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_firstQSent:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentTime()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/android/VASTLinearAd;->getDuration()D

    move-result-wide v4

    mul-double/2addr v4, v10

    div-double/2addr v4, v12

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 200
    const-string/jumbo v2, "firstQuartile"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 201
    iput-boolean v8, p0, Lcom/ooyala/android/VASTAdPlayer;->_firstQSent:Z

    goto :goto_0

    .line 202
    :cond_3
    iget-boolean v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_midSent:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentTime()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/android/VASTLinearAd;->getDuration()D

    move-result-wide v4

    mul-double/2addr v4, v10

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 203
    const-string/jumbo v2, "midpoint"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 204
    iput-boolean v8, p0, Lcom/ooyala/android/VASTAdPlayer;->_midSent:Z

    goto :goto_0

    .line 205
    :cond_4
    iget-boolean v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_thirdQSent:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentTime()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ooyala/android/VASTLinearAd;->getDuration()D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    div-double/2addr v4, v12

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 206
    const-string/jumbo v2, "thirdQuartile"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 207
    iput-boolean v8, p0, Lcom/ooyala/android/VASTAdPlayer;->_thirdQSent:Z

    goto :goto_0

    .line 210
    :cond_5
    const-string/jumbo v2, "stateChanged"

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 212
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ooyala/android/BaseStreamPlayer;

    move-object v2, v0

    .line 215
    invoke-virtual {v2}, Lcom/ooyala/android/BaseStreamPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v2

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v2, v3, :cond_1

    .line 216
    const-string/jumbo v2, "complete"

    invoke-virtual {p0, v2}, Lcom/ooyala/android/VASTAdPlayer;->sendTrackingEvent(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_6
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->destroy()V

    .line 221
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->addQuartileBoundaryObserver()V

    .line 222
    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_linearAdQueue:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/android/VASTLinearAd;

    invoke-virtual {v2}, Lcom/ooyala/android/VASTLinearAd;->getStreams()Ljava/util/Set;

    move-result-object v2

    invoke-super {p0, v3, v2}, Lcom/ooyala/android/AdMoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 223
    invoke-super {p0}, Lcom/ooyala/android/AdMoviePlayer;->play()V

    .line 226
    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/ooyala/android/VASTAdPlayer;->currentAd()Lcom/ooyala/android/VASTLinearAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/VASTLinearAd;->getClickThroughURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 227
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-nez v2, :cond_7

    .line 228
    new-instance v2, Lcom/ooyala/android/AdsLearnMoreButton;

    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    invoke-direct {v2, v3, p0, v4}, Lcom/ooyala/android/AdsLearnMoreButton;-><init>(Landroid/content/Context;Lcom/ooyala/android/AdMoviePlayer;I)V

    iput-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    .line 229
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 243
    sget-object v2, Lcom/ooyala/android/VASTAdPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "arg0 should be a BaseStreamPlayer but is not!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0

    .line 235
    :cond_8
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateLearnMoreButton(Landroid/widget/FrameLayout;I)V
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    if-ne v0, p2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 265
    iput-object p1, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    .line 266
    iput p2, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    .line 269
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    iget v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AdsLearnMoreButton;->setTopMargin(I)V

    .line 270
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer;->_learnMore:Lcom/ooyala/android/AdsLearnMoreButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 274
    :cond_1
    iput-object p1, p0, Lcom/ooyala/android/VASTAdPlayer;->_playerLayout:Landroid/widget/FrameLayout;

    .line 275
    iput p2, p0, Lcom/ooyala/android/VASTAdPlayer;->_topMargin:I

    goto :goto_0
.end method
