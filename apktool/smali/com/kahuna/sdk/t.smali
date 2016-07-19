.class public Lcom/kahuna/sdk/t;
.super Ljava/lang/Object;
.source "KahunaSDKConfiguration.java"


# static fields
.field protected static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:J

.field private e:D

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:D

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lorg/json/JSONObject;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "k_app_bg"

    aput-object v2, v1, v3

    const-string/jumbo v2, "k_user_logout"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kahuna/sdk/t;->b:Ljava/util/HashSet;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/t;->c:Ljava/util/HashSet;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "Start"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kahuna/sdk/t;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/16 v0, 0x19

    iput v0, p0, Lcom/kahuna/sdk/t;->n:I

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/t;->d:J

    .line 140
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    .line 141
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/kahuna/sdk/t;->f:J

    .line 142
    sget-object v0, Lcom/kahuna/sdk/t;->b:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/t;->g:Ljava/util/Set;

    .line 143
    const/4 v0, 0x5

    iput v0, p0, Lcom/kahuna/sdk/t;->h:I

    .line 144
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    .line 145
    sget-object v0, Lcom/kahuna/sdk/t;->c:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/t;->j:Ljava/util/Set;

    .line 146
    iput-object v2, p0, Lcom/kahuna/sdk/t;->k:Ljava/util/Map;

    .line 147
    iput-object v2, p0, Lcom/kahuna/sdk/t;->l:Ljava/util/Set;

    .line 148
    iput-object v2, p0, Lcom/kahuna/sdk/t;->m:Ljava/util/Set;

    .line 149
    iput-object v2, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    .line 150
    const/16 v0, 0x64

    iput v0, p0, Lcom/kahuna/sdk/t;->r:I

    .line 151
    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/kahuna/sdk/t;
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 679
    .line 681
    if-eqz p0, :cond_4

    .line 682
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/s;->j(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 684
    const-string/jumbo v0, "version"

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 685
    const-string/jumbo v0, "flush_interval_min"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 687
    const-string/jumbo v0, "flush_on_event_count"

    const-wide/16 v2, 0x64

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 689
    const-string/jumbo v0, "trigger_events"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_1

    .line 692
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    .line 696
    :goto_0
    const-string/jumbo v0, "retry_attempts"

    const/4 v2, 0x5

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 699
    const-string/jumbo v0, "flush_soon_delay_min"

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v4, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 702
    const-string/jumbo v0, "flush_soon_events"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_2

    .line 705
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x1

    invoke-static {v0, v2, v14}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    .line 710
    :goto_1
    new-instance v0, Lcom/kahuna/sdk/t;

    invoke-direct {v0}, Lcom/kahuna/sdk/t;-><init>()V

    .line 711
    invoke-virtual {v0, v6, v7}, Lcom/kahuna/sdk/t;->a(J)V

    .line 712
    invoke-direct {v0, v8, v9}, Lcom/kahuna/sdk/t;->b(D)V

    .line 713
    invoke-direct {v0, v10, v11}, Lcom/kahuna/sdk/t;->b(J)V

    .line 714
    invoke-direct {v0, v3}, Lcom/kahuna/sdk/t;->a(Ljava/util/Set;)V

    .line 715
    invoke-direct {v0, v5}, Lcom/kahuna/sdk/t;->b(I)V

    .line 716
    invoke-virtual {v0, v12, v13}, Lcom/kahuna/sdk/t;->a(D)V

    .line 717
    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->b(Ljava/util/Set;)V

    .line 720
    const-string/jumbo v2, "event_remapping"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 721
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/kahuna/sdk/t;->b(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->a(Ljava/util/Map;)V

    .line 723
    const-string/jumbo v2, "events_to_include"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 724
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->d(Ljava/util/Set;)V

    .line 726
    const-string/jumbo v2, "events_to_exclude"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 727
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->c(Ljava/util/Set;)V

    .line 729
    const-string/jumbo v2, "event_properties_max_count"

    const/16 v3, 0x19

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->c(I)V

    .line 731
    const-string/jumbo v2, "event_properties_to_include"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 732
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->b(Ljava/util/Map;)V

    .line 734
    const-string/jumbo v2, "event_properties_to_exclude"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 735
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/t;->c(Ljava/util/Map;)V

    .line 737
    const-string/jumbo v2, "event_bucket_config"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/t;->b(Lorg/json/JSONObject;)V

    .line 738
    const-string/jumbo v2, "event_batch_size"

    const/16 v3, 0x64

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/t;->a(I)V

    .line 740
    invoke-static {}, Lcom/kahuna/sdk/w;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_2
    if-nez v0, :cond_0

    .line 752
    new-instance v0, Lcom/kahuna/sdk/t;

    invoke-direct {v0}, Lcom/kahuna/sdk/t;-><init>()V

    .line 755
    :cond_0
    return-object v0

    .line 694
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/t;->b:Ljava/util/HashSet;

    move-object v3, v0

    goto/16 :goto_0

    .line 707
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/t;->c:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto/16 :goto_1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_3

    .line 745
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting SDK configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 748
    invoke-static {}, Lcom/kahuna/sdk/w;->a()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/t;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    new-instance v0, Lcom/kahuna/sdk/t;

    invoke-direct {v0}, Lcom/kahuna/sdk/t;-><init>()V

    .line 156
    if-eqz p0, :cond_5

    .line 157
    const-string/jumbo v1, "v"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kahuna/sdk/t;->a(J)V

    .line 158
    const-string/jumbo v1, "t"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/t;->b(D)V

    .line 159
    const-string/jumbo v1, "n"

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/t;->b(J)V

    .line 160
    const-string/jumbo v1, "ro"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->b(I)V

    .line 161
    const-string/jumbo v1, "fsd"

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kahuna/sdk/t;->a(D)V

    .line 164
    const-string/jumbo v1, "fi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "fi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/t;->b:Ljava/util/HashSet;

    invoke-static {v1, v2, v5}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->a(Ljava/util/Set;)V

    .line 167
    :cond_0
    const-string/jumbo v1, "fs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "fs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/t;->c:Ljava/util/HashSet;

    invoke-static {v1, v2, v5}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->b(Ljava/util/Set;)V

    .line 172
    :cond_1
    const-string/jumbo v1, "mapev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/kahuna/sdk/t;->b(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->a(Ljava/util/Map;)V

    .line 175
    const-string/jumbo v1, "incev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    const-string/jumbo v1, "incev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->d(Ljava/util/Set;)V

    .line 183
    :goto_0
    const-string/jumbo v1, "epmc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string/jumbo v1, "epmc"

    const/16 v2, 0x19

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->c(I)V

    .line 186
    :cond_2
    const-string/jumbo v1, "incev_p"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string/jumbo v1, "incev_p"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->b(Ljava/util/Map;)V

    .line 189
    :cond_3
    const-string/jumbo v1, "execv_p"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    const-string/jumbo v1, "execv_p"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->c(Ljava/util/Map;)V

    .line 193
    :cond_4
    const-string/jumbo v1, "bckev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/t;->b(Lorg/json/JSONObject;)V

    .line 194
    const-string/jumbo v1, "bs"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/t;->a(I)V

    .line 197
    :cond_5
    invoke-static {}, Lcom/kahuna/sdk/w;->a()V

    .line 198
    return-object v0

    .line 179
    :cond_6
    const-string/jumbo v1, "excev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/kahuna/sdk/t;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/t;->c(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 759
    if-eqz p0, :cond_0

    .line 760
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 761
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 762
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/kahuna/sdk/t;->b(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 769
    :cond_0
    return-object p1
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    if-eqz p0, :cond_2

    .line 791
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 792
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 793
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 794
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 796
    if-eqz p2, :cond_0

    .line 797
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 799
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 805
    :cond_2
    return-object p1
.end method

.method protected static a(Landroid/content/Context;Lcom/kahuna/sdk/t;)V
    .locals 6

    .prologue
    .line 606
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 612
    const-string/jumbo v0, "version"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 613
    const-string/jumbo v0, "flush_interval_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->b()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 614
    const-string/jumbo v0, "flush_on_event_count"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 616
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 617
    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 674
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception serializing SDK config to save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_2
    :try_start_1
    const-string/jumbo v0, "trigger_events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string/jumbo v0, "retry_attempts"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    const-string/jumbo v0, "flush_soon_delay_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->g()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 623
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 624
    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 627
    :cond_3
    const-string/jumbo v0, "flush_soon_events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 631
    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->j()Ljava/util/Map;

    move-result-object v3

    .line 632
    if-eqz v3, :cond_4

    .line 633
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 634
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 638
    :cond_4
    const-string/jumbo v0, "event_remapping"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 640
    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->l()Ljava/util/Set;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_6

    .line 642
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 645
    :cond_5
    const-string/jumbo v0, "events_to_include"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    :cond_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 648
    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->k()Ljava/util/Set;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_8

    .line 650
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 653
    :cond_7
    const-string/jumbo v0, "events_to_exclude"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    :cond_8
    const-string/jumbo v0, "event_properties_max_count"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->m()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 658
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->n()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 659
    const-string/jumbo v2, "event_properties_to_include"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->o()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 661
    const-string/jumbo v2, "event_properties_to_exclude"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    iget-object v0, p1, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    .line 664
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p1, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    .line 666
    :cond_9
    const-string/jumbo v0, "event_bucket_config"

    iget-object v2, p1, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string/jumbo v0, "event_batch_size"

    invoke-virtual {p1}, Lcom/kahuna/sdk/t;->q()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    invoke-static {p0, v1}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_2

    .line 319
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 320
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_1
    iput-object v2, p0, Lcom/kahuna/sdk/t;->k:Ljava/util/Map;

    .line 335
    :goto_1
    return-void

    .line 333
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/t;->k:Ljava/util/Map;

    goto :goto_1
.end method

.method private a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kahuna/sdk/t;->g:Ljava/util/Set;

    .line 257
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 489
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    const-string/jumbo v1, "Start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 495
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Can\'t process event filterings or mappings if the name is start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_2
    invoke-static {p1}, Lcom/kahuna/sdk/w;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-static {p4}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 563
    :goto_0
    return v0

    .line 547
    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    invoke-static {v0, p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 551
    if-eqz v0, :cond_2

    .line 552
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 554
    invoke-static {v1, p2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2, p3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v3

    .line 563
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-static {p2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 538
    :goto_0
    return v0

    .line 533
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 534
    invoke-static {v0, p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 538
    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    if-eqz p0, :cond_0

    .line 775
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 776
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 777
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 785
    :cond_0
    return-object p1
.end method

.method private b(D)V
    .locals 9

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 218
    iput-wide p1, p0, Lcom/kahuna/sdk/t;->e:D

    .line 221
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 222
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    .line 225
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 226
    iput-wide v4, p0, Lcom/kahuna/sdk/t;->e:D

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 228
    iput-wide v6, p0, Lcom/kahuna/sdk/t;->e:D

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 264
    iput p1, p0, Lcom/kahuna/sdk/t;->h:I

    .line 267
    iget v0, p0, Lcom/kahuna/sdk/t;->h:I

    if-gez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/t;->h:I

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/kahuna/sdk/t;->h:I

    if-le v0, v1, :cond_0

    .line 271
    iput v1, p0, Lcom/kahuna/sdk/t;->h:I

    goto :goto_0
.end method

.method private b(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v2, 0x1

    .line 237
    iput-wide p1, p0, Lcom/kahuna/sdk/t;->f:J

    .line 240
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 241
    iput-wide v2, p0, Lcom/kahuna/sdk/t;->f:J

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 244
    iput-wide v4, p0, Lcom/kahuna/sdk/t;->f:J

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/t;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    goto :goto_0
.end method

.method private b(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/kahuna/sdk/t;->j:Ljava/util/Set;

    .line 307
    return-void
.end method

.method private c(I)V
    .locals 0

    .prologue
    .line 388
    if-ltz p1, :cond_0

    .line 389
    iput p1, p0, Lcom/kahuna/sdk/t;->n:I

    .line 391
    :cond_0
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/t;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iput-object p1, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    goto :goto_0
.end method

.method private c(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    if-eqz p1, :cond_2

    .line 347
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 348
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    iput-object v1, p0, Lcom/kahuna/sdk/t;->l:Ljava/util/Set;

    .line 358
    :goto_1
    return-void

    .line 356
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/t;->l:Ljava/util/Set;

    goto :goto_1
.end method

.method private d(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 575
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 578
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    invoke-static {v0}, Lcom/kahuna/sdk/w;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 586
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 587
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 588
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 589
    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 592
    invoke-static {v2}, Lcom/kahuna/sdk/w;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v3}, Lcom/kahuna/sdk/w;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 597
    :cond_2
    invoke-static {v6}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    :cond_3
    return-object v4
.end method

.method private d(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p1, :cond_2

    .line 370
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 371
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_1
    iput-object v1, p0, Lcom/kahuna/sdk/t;->m:Ljava/util/Set;

    .line 381
    :goto_1
    return-void

    .line 379
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/t;->m:Ljava/util/Set;

    goto :goto_1
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->d:J

    return-wide v0
.end method

.method protected a(D)V
    .locals 9

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 284
    iput-wide p1, p0, Lcom/kahuna/sdk/t;->i:D

    .line 287
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 288
    iput-wide v4, p0, Lcom/kahuna/sdk/t;->i:D

    .line 291
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 292
    iput-wide v4, p0, Lcom/kahuna/sdk/t;->i:D

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 294
    iput-wide v6, p0, Lcom/kahuna/sdk/t;->i:D

    goto :goto_0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x1

    .line 468
    iput p1, p0, Lcom/kahuna/sdk/t;->r:I

    .line 471
    iget v0, p0, Lcom/kahuna/sdk/t;->r:I

    if-ge v0, v1, :cond_2

    .line 472
    iput v1, p0, Lcom/kahuna/sdk/t;->r:I

    .line 479
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kahuna/sdk/t;->r:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/kahuna/sdk/t;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 480
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->f:J

    long-to-int v0, v0

    iput v0, p0, Lcom/kahuna/sdk/t;->r:I

    .line 482
    :cond_1
    return-void

    .line 474
    :cond_2
    iget v0, p0, Lcom/kahuna/sdk/t;->r:I

    if-le v0, v2, :cond_0

    .line 475
    iput v2, p0, Lcom/kahuna/sdk/t;->r:I

    goto :goto_0
.end method

.method protected a(J)V
    .locals 1

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/kahuna/sdk/t;->d:J

    .line 207
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 507
    iget-object v2, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    invoke-direct {p0, p1, v2}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    invoke-direct {p0, p1, v2}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v0, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected b()D
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    return-wide v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 426
    if-eqz p1, :cond_4

    .line 427
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 434
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    cmpl-double v8, v2, v8

    if-nez v8, :cond_0

    move-wide v2, v4

    .line 438
    :cond_0
    cmpg-double v8, v2, v4

    if-gez v8, :cond_3

    move-wide v2, v4

    .line 443
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_2

    .line 448
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception while trying to set event bucket config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    :goto_2
    return-void

    .line 440
    :cond_3
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    move-wide v2, v6

    .line 441
    goto :goto_1

    .line 453
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    goto :goto_2
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->e:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->f:J

    return-wide v0
.end method

.method protected e()Ljava/util/Set;
    .locals 2
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
    .line 249
    iget-object v0, p0, Lcom/kahuna/sdk/t;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/t;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/kahuna/sdk/t;->h:I

    return v0
.end method

.method protected g()D
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    return-wide v0
.end method

.method protected h()J
    .locals 4

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/kahuna/sdk/t;->i:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected i()Ljava/util/Set;
    .locals 2
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
    .line 299
    iget-object v0, p0, Lcom/kahuna/sdk/t;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/t;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 302
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected j()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/kahuna/sdk/t;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kahuna/sdk/t;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 313
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected k()Ljava/util/Set;
    .locals 2
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
    .line 338
    iget-object v0, p0, Lcom/kahuna/sdk/t;->l:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/t;->l:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 341
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected l()Ljava/util/Set;
    .locals 2
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
    .line 361
    iget-object v0, p0, Lcom/kahuna/sdk/t;->m:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/t;->m:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 364
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/kahuna/sdk/t;->n:I

    return v0
.end method

.method protected n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/kahuna/sdk/t;->o:Ljava/util/Map;

    .line 397
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/kahuna/sdk/t;->p:Ljava/util/Map;

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected p()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/kahuna/sdk/t;->q:Lorg/json/JSONObject;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/kahuna/sdk/t;->r:I

    return v0
.end method
