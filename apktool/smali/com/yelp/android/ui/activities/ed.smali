.class Lcom/yelp/android/ui/activities/ed;
.super Ljava/lang/Object;
.source "ActivityTipOfTheDay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Tip;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;Lcom/yelp/android/serializable/Tip;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ed;->b:Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ed;->a:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ed;->b:Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ed;->b:Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ed;->a:Lcom/yelp/android/serializable/Tip;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ed;->a:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTipOfTheDay;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
