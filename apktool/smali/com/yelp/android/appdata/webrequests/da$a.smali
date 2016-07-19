.class public final Lcom/yelp/android/appdata/webrequests/da$a;
.super Ljava/lang/Object;
.source "NearbyTalkTopicsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/da$a;->b:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/da$a;->a:Ljava/util/ArrayList;

    .line 30
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/da$a;->c:I

    .line 31
    return-void
.end method
