.class Lcom/yelp/android/ui/activities/profile/UserProfileView$5;
.super Ljava/lang/Object;
.source "UserProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpBasicUserInfo(Lcom/yelp/android/serializable/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$5;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$5;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView$5;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 456
    return-void
.end method
