.class Lcom/yelp/android/ui/activities/ba;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ba;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ba;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5

    .prologue
    .line 234
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ba;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    .line 236
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v2

    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Lcom/yelp/android/appdata/j;->a(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 240
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ba;->a:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 241
    if-eqz p3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ba;->a:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 245
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/PlatformQualifier;->valueOf(Ljava/lang/String;)Lcom/yelp/android/util/PlatformQualifier;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v2, v1, v3}, Lcom/yelp/android/appdata/j;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 249
    return-void
.end method
