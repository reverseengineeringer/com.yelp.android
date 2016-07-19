.class public abstract Lcom/yelp/android/ui/activities/support/YelpTabActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "YelpTabActivity.java"


# instance fields
.field private a:Landroid/support/v4/app/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Landroid/support/v4/app/FragmentTabHost;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->a:Landroid/support/v4/app/FragmentTabHost;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->initHelper()V

    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/os/Bundle;)V

    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->removeToolbarElevation()V

    .line 18
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->setContentView(I)V

    .line 19
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentTabHost;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->a:Landroid/support/v4/app/FragmentTabHost;

    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->a:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const v2, 0x1020011

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/l;I)V

    .line 21
    return-void
.end method
