.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1066
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1066
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 16

    .line 1071
    const-string v0, "historical-record"

    const-string v1, "historical-records"

    const-string v2, "Error writing historical recrod file: "

    const/4 v3, 0x0

    aget-object v4, p1, v3

    check-cast v4, Ljava/util/List;

    .line 1072
    const/4 v5, 0x1

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    .line 1074
    nop

    .line 1077
    const/4 v6, 0x0

    :try_start_12
    iget-object v7, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v7}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmContext(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_108

    .line 1081
    nop

    .line 1083
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 1086
    :try_start_21
    invoke-interface {v7, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1087
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1088
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 1091
    move v9, v3

    :goto_39
    if-ge v9, v8, :cond_6d

    .line 1092
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1093
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const-string v11, "activity"

    iget-object v12, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1095
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 1094
    invoke-interface {v7, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    const-string/jumbo v11, "time"

    iget-wide v12, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const-string/jumbo v11, "weight"

    iget v10, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    .line 1104
    :cond_6d
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_73} :catch_d0
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_73} :catch_a9
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_73} :catch_7f
    .catchall {:try_start_21 .. :try_end_73} :catchall_7c

    .line 1117
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v5}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz p1, :cond_fa

    .line 1120
    :goto_7a
    goto/16 :goto_f6

    .line 1117
    :catchall_7c
    move-exception v0

    goto/16 :goto_fb

    .line 1114
    :catch_7f
    move-exception v0

    .line 1115
    :try_start_80
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_7c

    .line 1117
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v5}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz p1, :cond_fa

    .line 1120
    :goto_a5
    :try_start_a5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_f8

    goto :goto_f7

    .line 1112
    :catch_a9
    move-exception v0

    .line 1113
    :try_start_aa
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c8
    .catchall {:try_start_aa .. :try_end_c8} :catchall_7c

    .line 1117
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v5}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz p1, :cond_fa

    .line 1120
    goto :goto_7a

    .line 1110
    :catch_d0
    move-exception v0

    .line 1111
    :try_start_d1
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ef
    .catchall {:try_start_d1 .. :try_end_ef} :catchall_7c

    .line 1117
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v5}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz p1, :cond_fa

    .line 1120
    :goto_f6
    goto :goto_a5

    .line 1123
    :goto_f7
    goto :goto_fa

    .line 1121
    :catch_f8
    move-exception p1

    goto :goto_f7

    .line 1126
    :cond_fa
    :goto_fa
    return-object v6

    .line 1117
    :goto_fb
    iget-object v1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v1, v5}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz p1, :cond_107

    .line 1120
    :try_start_102
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    .line 1123
    goto :goto_107

    .line 1121
    :catch_106
    move-exception p1

    .line 1125
    :cond_107
    :goto_107
    throw v0

    .line 1078
    :catch_108
    move-exception v0

    .line 1079
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return-object v6
.end method
