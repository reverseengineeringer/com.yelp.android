.class Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;
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
    .line 121
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setResult(I)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;->a:Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->finish()V

    .line 126
    return-void
.end method
