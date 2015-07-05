.class public final Lcom/yelp/android/appdata/webrequests/gc;
.super Ljava/lang/Object;
.source "TopicsSubscribedRequest.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/gc;->b:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/gc;->a:Ljava/util/ArrayList;

    .line 39
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/gc;->c:I

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/gc;->a:Ljava/util/ArrayList;

    return-object v0
.end method
