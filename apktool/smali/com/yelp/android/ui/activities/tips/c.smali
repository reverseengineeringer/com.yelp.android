.class Lcom/yelp/android/ui/activities/tips/c;
.super Ljava/lang/Object;
.source "TipComplimentsLikes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/c;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/c;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070637

    const v3, 0x7f070356

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/c;->a:Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method
