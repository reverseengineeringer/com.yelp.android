.class public Lcom/yelp/android/appdata/webrequests/bz;
.super Ljava/lang/Object;
.source "EventsSectionRequest.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/bz;->a:Ljava/util/List;

    .line 39
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/bz;->b:I

    .line 40
    return-void
.end method
