.class final Lcom/yelp/android/ui/activities/search/au;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/au;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/au;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;)V

    .line 209
    return-void
.end method
