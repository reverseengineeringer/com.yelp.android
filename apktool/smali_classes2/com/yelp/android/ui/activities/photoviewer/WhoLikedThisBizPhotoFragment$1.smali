.class Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$1;
.super Ljava/lang/Object;
.source "WhoLikedThisBizPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$1;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
