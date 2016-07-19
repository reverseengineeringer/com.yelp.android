.class public Lcom/yelp/android/ui/util/o$a;
.super Ljava/lang/Object;
.source "GlideImageLoader.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/yelp/android/ui/util/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/util/o;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/util/o$1;)V

    return-object v0
.end method
