.class Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;
.super Ljava/lang/Object;
.source "PreviewPhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/PreviewPhoto;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setResult(I)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->finish()V

    .line 115
    return-void
.end method
