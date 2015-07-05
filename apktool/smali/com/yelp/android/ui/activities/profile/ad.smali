.class Lcom/yelp/android/ui/activities/profile/ad;
.super Ljava/lang/Object;
.source "UserProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ad;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/ad;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ad;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 413
    return-void
.end method
