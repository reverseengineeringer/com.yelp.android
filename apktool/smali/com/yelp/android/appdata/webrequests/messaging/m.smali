.class public final Lcom/yelp/android/appdata/webrequests/messaging/m;
.super Ljava/lang/Object;
.source "MessagesRequest.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
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
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/messaging/m;->a:Ljava/util/List;

    .line 26
    iput p2, p0, Lcom/yelp/android/appdata/webrequests/messaging/m;->b:I

    .line 27
    return-void
.end method
