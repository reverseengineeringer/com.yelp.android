.class Lcom/yelp/android/ui/activities/profile/d$b$2;
.super Ljava/lang/Object;
.source "ReviewTipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/d$b;->a(Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/d$b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/d$b$2;->b:Lcom/yelp/android/ui/activities/profile/d$b;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/d$b$2;->a:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/d$b$2;->a:Lcom/yelp/android/serializable/Tip;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/d$b$2;->a:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method
