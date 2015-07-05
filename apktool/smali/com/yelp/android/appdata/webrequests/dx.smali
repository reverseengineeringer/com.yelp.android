.class public final Lcom/yelp/android/appdata/webrequests/dx;
.super Ljava/lang/Object;
.source "NearbyTalkTopicsRequest.java"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:I


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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dx;->b:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dx;->a:Ljava/util/ArrayList;

    .line 29
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/dx;->c:I

    .line 30
    return-void
.end method
