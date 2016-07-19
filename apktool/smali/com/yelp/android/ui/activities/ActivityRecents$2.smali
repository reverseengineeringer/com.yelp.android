.class Lcom/yelp/android/ui/activities/ActivityRecents$2;
.super Ljava/lang/Object;
.source "ActivityRecents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityRecents;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRecents$2;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/b;->c()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$2;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/ui/activities/ActivityRecents;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->clear()V

    .line 202
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->RecentClear:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 203
    return-void
.end method
