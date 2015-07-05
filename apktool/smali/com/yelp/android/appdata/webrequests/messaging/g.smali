.class public final Lcom/yelp/android/appdata/webrequests/messaging/g;
.super Ljava/lang/Object;
.source "ConversationsRequest.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/messaging/g;->a:Ljava/util/List;

    .line 29
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/messaging/g;->b:I

    .line 30
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/messaging/g;->c:I

    .line 31
    return-void
.end method
