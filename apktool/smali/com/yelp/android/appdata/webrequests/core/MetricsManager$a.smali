.class public Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->a:I

    .line 724
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->b:Ljava/lang/String;

    .line 725
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->b:Ljava/lang/String;

    return-object v0
.end method
