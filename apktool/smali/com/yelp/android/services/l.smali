.class public Lcom/yelp/android/services/l;
.super Ljava/lang/Object;
.source "SharingUtilities.java"


# static fields
.field private static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/l;->a:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/services/q;I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 77
    invoke-static {p0}, Lcom/yelp/android/services/l;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/yelp/android/services/n;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/yelp/android/services/n;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v2, Lcom/yelp/android/services/m;

    invoke-direct {v2, p0, v1, p1}, Lcom/yelp/android/services/m;-><init>(Landroid/app/Activity;Lcom/yelp/android/services/n;Lcom/yelp/android/services/q;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/services/l;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/yelp/android/services/p;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/services/p;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/yelp/android/services/n;ILcom/yelp/android/services/q;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/services/l;->b(Landroid/content/Context;Lcom/yelp/android/services/n;ILcom/yelp/android/services/q;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/yelp/android/services/n;ILcom/yelp/android/services/q;)V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Lcom/yelp/android/services/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 99
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 100
    new-instance v1, Lcom/yelp/android/services/o;

    invoke-direct {v1, v0}, Lcom/yelp/android/services/o;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 102
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/yelp/android/services/l;->a:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p3, p0, v1, v3}, Lcom/yelp/android/services/q;->a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p3}, Lcom/yelp/android/services/q;->a()Lcom/yelp/android/analytics/h;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    .line 112
    const-string/jumbo v4, "app_id"

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 114
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
