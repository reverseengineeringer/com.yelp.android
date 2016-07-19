.class public final Lcom/yelp/android/appdata/webrequests/messaging/k$a;
.super Ljava/lang/Object;
.source "MessageTheBusinessInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/messaging/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->b:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->c:Z

    .line 30
    return-void
.end method
