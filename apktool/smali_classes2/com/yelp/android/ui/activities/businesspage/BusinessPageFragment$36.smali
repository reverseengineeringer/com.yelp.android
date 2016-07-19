.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 3607
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$36;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 3615
    return-void
.end method
