.class final Lcom/yelp/android/ui/activities/search/av;
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
    .line 212
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/av;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilter:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/av;->a:Landroid/support/v7/app/ActionBarActivity;

    check-cast v0, Lcom/yelp/android/ui/activities/search/ax;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/ax;->h()V

    .line 218
    return-void
.end method
