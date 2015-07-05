.class public Lcom/brightcove/player/controller/DefaultSourceSelectionController;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "DefaultSourceSelectionController.java"

# interfaces
.implements Lcom/brightcove/player/controller/SourceSelector;
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "sourceNotFound"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "selectSource"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_BIT_RATE:Ljava/lang/Integer;

.field preferHls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 55
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->DEFAULT_BIT_RATE:Ljava/lang/Integer;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->getMinimumHLSVersion()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->preferHls:Z

    .line 70
    invoke-virtual {p0}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->initializeListeners()V

    .line 71
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method


# virtual methods
.method public findBestSourceByBitRate(Lcom/brightcove/player/model/SourceCollection;Ljava/lang/Integer;)Lcom/brightcove/player/model/Source;
    .locals 6

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Lcom/brightcove/player/controller/NoSourceFoundException;

    invoke-direct {v0}, Lcom/brightcove/player/controller/NoSourceFoundException;-><init>()V

    throw v0

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 140
    const v1, 0x7fffffff

    .line 142
    invoke-virtual {p1}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 144
    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getBitRate()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getBitRate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getBitRate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 149
    if-gt v3, v1, :cond_4

    move-object v1, v0

    move v0, v3

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 153
    goto :goto_0

    .line 154
    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method getMinimumHLSVersion()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xe

    return v0
.end method

.method protected initializeListeners()V
    .locals 3

    .prologue
    .line 158
    const-string/jumbo v0, "selectSource"

    new-instance v1, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;-><init>(Lcom/brightcove/player/controller/DefaultSourceSelectionController;Lcom/brightcove/player/controller/DefaultSourceSelectionController$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 159
    return-void
.end method

.method public selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "videoRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getSourceCollections()Ljava/util/Map;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    new-instance v0, Lcom/brightcove/player/controller/NoSourceFoundException;

    invoke-direct {v0}, Lcom/brightcove/player/controller/NoSourceFoundException;-><init>()V

    throw v0

    .line 96
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->preferHls:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/SourceCollection;

    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    move-object v1, v0

    .line 103
    :cond_3
    if-nez v1, :cond_4

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/SourceCollection;

    iget-object v1, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->DEFAULT_BIT_RATE:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->findBestSourceByBitRate(Lcom/brightcove/player/model/SourceCollection;Ljava/lang/Integer;)Lcom/brightcove/player/model/Source;

    move-result-object v1

    .line 110
    :cond_4
    if-nez v1, :cond_7

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/SourceCollection;

    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getSources()Ljava/util/Set;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 117
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 118
    :cond_5
    new-instance v0, Lcom/brightcove/player/controller/NoSourceFoundException;

    invoke-direct {v0}, Lcom/brightcove/player/controller/NoSourceFoundException;-><init>()V

    throw v0

    .line 120
    :cond_6
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method
