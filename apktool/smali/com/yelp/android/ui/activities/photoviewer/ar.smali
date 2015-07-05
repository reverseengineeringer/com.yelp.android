.class Lcom/yelp/android/ui/activities/photoviewer/ar;
.super Ljava/lang/Object;
.source "WhoLikedThisBizPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ar;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

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
    .line 68
    const/4 v0, 0x1

    return v0
.end method
