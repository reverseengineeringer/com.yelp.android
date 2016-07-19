.class public Lcom/yelp/android/appdata/ApiPreferences;
.super Ljava/lang/Object;
.source "ApiPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/ApiPreferences$b;,
        Lcom/yelp/android/appdata/ApiPreferences$a;,
        Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/Preferences;

.field private b:Lcom/yelp/android/appdata/webrequests/dd;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/ApiPreferences$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Preferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/yelp/android/appdata/ApiPreferences$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/ApiPreferences$4;-><init>(Lcom/yelp/android/appdata/ApiPreferences;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->c:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/yelp/android/serializable/Preferences;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Preferences;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ApiPreferences;)Lcom/yelp/android/serializable/Preferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ApiPreferences;Lcom/yelp/android/serializable/Preferences;)Lcom/yelp/android/serializable/Preferences;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/ApiPreferences;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/appdata/ApiPreferences$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/ApiPreferences$1;-><init>(Lcom/yelp/android/appdata/ApiPreferences;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences$a;)V

    .line 62
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/ApiPreferences$a;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->b:Lcom/yelp/android/appdata/webrequests/dd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->b:Lcom/yelp/android/appdata/webrequests/dd;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dd;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dd;

    iget-object v1, p0, Lcom/yelp/android/appdata/ApiPreferences;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/dd;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->b:Lcom/yelp/android/appdata/webrequests/dd;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->b:Lcom/yelp/android/appdata/webrequests/dd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dd;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/yelp/android/appdata/ApiPreferences$b;)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Preferences;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v1, p1, p2}, Lcom/yelp/android/serializable/Preferences;->a(Ljava/lang/String;I)V

    .line 107
    new-instance v1, Lcom/yelp/android/appdata/webrequests/de;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/appdata/ApiPreferences$3;

    invoke-direct {v3, p0, v0, p1, p3}, Lcom/yelp/android/appdata/ApiPreferences$3;-><init>(Lcom/yelp/android/appdata/ApiPreferences;Ljava/lang/Integer;Ljava/lang/String;Lcom/yelp/android/appdata/ApiPreferences$b;)V

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/de;-><init>(Ljava/util/Map;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/de;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 82
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/ApiPreferences$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/ApiPreferences$2;-><init>(Lcom/yelp/android/appdata/ApiPreferences;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;ILcom/yelp/android/appdata/ApiPreferences$b;)V

    .line 91
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;)Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    iget-object v1, p1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Preferences;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Preferences;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Preferences;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreferenceSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences;->a:Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
