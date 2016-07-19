.class Lcom/yelp/android/ui/activities/support/a$2;
.super Ljava/lang/Object;
.source "ShareSheetHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/a;-><init>(Landroid/app/Activity;Lcom/yelp/android/services/ShareFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flipboard/bottomsheet/commons/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yelp/android/ui/activities/support/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/a$2;->b:Lcom/yelp/android/ui/activities/support/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/a$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$a;)I
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/yelp/android/services/e$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a$2;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/services/e$b;-><init>(Landroid/content/pm/PackageManager;)V

    iget-object v1, p1, Lcom/flipboard/bottomsheet/commons/a$a;->d:Landroid/content/pm/ResolveInfo;

    iget-object v2, p2, Lcom/flipboard/bottomsheet/commons/a$a;->d:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/services/e$b;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/flipboard/bottomsheet/commons/a$a;

    check-cast p2, Lcom/flipboard/bottomsheet/commons/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/a$2;->a(Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$a;)I

    move-result v0

    return v0
.end method
