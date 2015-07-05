.class Lcom/yelp/android/ui/activities/dp;
.super Ljava/lang/Object;
.source "ActivityRecents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dp;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/d;->c()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dp;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/ui/activities/ActivityRecents;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->clear()V

    .line 190
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->RecentClear:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 191
    return-void
.end method
