.class Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$2;
.super Ljava/lang/Object;
.source "ActivityClaimGuestAccount.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$2;->a:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$2;->a:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->b(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$a;->d()V

    .line 166
    return-void
.end method
